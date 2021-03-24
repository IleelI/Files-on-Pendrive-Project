#include <iostream>

typedef struct file {
  unsigned long id{0};
  unsigned long size{0};
}File;
typedef struct penInfo {
  unsigned long firstPenSize{0};
  unsigned long secondPenSize{0};
} PenInfo;
void getInputFiles(File* files, unsigned long noFiles) {
  for (std::size_t i = 0; i < noFiles; i++)
    scanf("%lu %lu", &files[i].id, &files[i].size);
}
void merge(File* files, unsigned long start, unsigned long middle, unsigned long end, bool sortById) {
  std::size_t lSize = middle - start + 1;
  std::size_t rSize = end - middle;
  File* left = new File[lSize];
  File* right = new File[rSize];
  for (std::size_t i = 0; i < lSize; i++) {
    left[i] = files[start + i];
  }
  for (std::size_t i = 0; i < rSize; i++) {
    right[i] = files[middle + 1 + i];
  }
  unsigned long lIdx = 0, rIdx = 0, filesIdx = start;
  if (sortById) {
    while (lIdx < lSize && rIdx < rSize) {
        if (left[lIdx].id >= right[rIdx].id) {
          files[filesIdx++] = left[lIdx++];
          continue;
        }
        else  {
          files[filesIdx++] = right[rIdx++];
          continue;
        }
      }
  }
  else {
    while (lIdx < lSize && rIdx < rSize) {
      if (left[lIdx].size >= right[rIdx].size) {
        files[filesIdx++] = right[rIdx++];
        continue;
      }
      else {
        files[filesIdx++] = left[lIdx++];
        continue;
      }
    }
  }
  while (lIdx < lSize) {
    files[filesIdx++] = left[lIdx++];
  }
  while (rIdx < rSize) {
    files[filesIdx++] = right[rIdx++];
  }
  delete[] left;
  delete[] right;
}
void sort(File* files, unsigned long start, unsigned long end, bool sortById) {
  if (start >= end)
    return;
  else {
    unsigned long middle = (start + end) / 2;
    sort(files, start, middle, sortById);
    sort(files, middle+1, end, sortById);
    merge(files, start, middle, end, sortById);
  }
}
void getPendriveSizes(File* files, unsigned long penSize, unsigned long noFiles, PenInfo* penInfo) {
  bool isFirstFull = false;
  unsigned long checkSum = 0;
  for (std::size_t i = 0; i < noFiles; i++) {
    checkSum += files[i].size;
    if (checkSum > penSize) {
      if (!isFirstFull) {
        penInfo->firstPenSize = i;
        isFirstFull = true;
      }
      else {
        unsigned long secondSize = (penInfo->firstPenSize == 0) ? i - 1 : i - penInfo->firstPenSize;
        penInfo->secondPenSize = secondSize;
        return;
      }
      checkSum = 0;
      i-=1;
    }
  }
  if (isFirstFull == false) {
    penInfo->firstPenSize = noFiles;
  }
  else {
    penInfo->secondPenSize = noFiles - penInfo->firstPenSize;
  }
}
void assignFilesToPendrives(File* files, File* firstPendrive, File* secondPendrive, PenInfo penInfo) {
  for (std::size_t i = 0; i < penInfo.firstPenSize; i++) {
    firstPendrive[i] = files[i];
  }
  for (std::size_t i = 0; i < penInfo.secondPenSize; i++) {
    secondPendrive[i] = files[penInfo.firstPenSize+i];
  }
}
void printPendrives(File* firstPendrive, File* secondPendrive, PenInfo penInfo) {
  printf("%lu\n", penInfo.firstPenSize+penInfo.secondPenSize);
  printf("1: ");
  for (std::size_t i = 0; i < penInfo.firstPenSize; i++) {
    printf("%lu ", firstPendrive[i].id);
  }
  printf("\n2: ");
  for (std::size_t i = 0; i < penInfo.secondPenSize; i++) {
    printf("%lu ", secondPendrive[i].id);
  }
}

int main() {
  unsigned long noFiles = 0;
  unsigned long penSize = 0;
  scanf("%lu %lu",&noFiles,&penSize);
  File* files = new File[noFiles];
  PenInfo penInfo{0,0};

  getInputFiles(files,noFiles);
  sort(files,0,noFiles-1, false);

  getPendriveSizes(files, penSize, noFiles, &penInfo);
  File* firstPendrive = new File[penInfo.firstPenSize];
  File* secondPendrive = new File[penInfo.secondPenSize];

  assignFilesToPendrives(files,firstPendrive,secondPendrive,penInfo);
  if (penInfo.firstPenSize != 0 && penInfo.secondPenSize != 0) {
    sort(firstPendrive,0,penInfo.firstPenSize-1,true);
    sort(secondPendrive,0,penInfo.secondPenSize-1,true);
  }
  else if (penInfo.firstPenSize == 0) {
    sort(secondPendrive,0,penInfo.secondPenSize-1,true);
  }
  else if (penInfo.secondPenSize == 0) {
    sort(firstPendrive,0,penInfo.firstPenSize-1,true);
  }

  printPendrives(firstPendrive,secondPendrive,penInfo);

  delete[] files;
  delete[] firstPendrive;
  delete[] secondPendrive;
  return 0;
}
