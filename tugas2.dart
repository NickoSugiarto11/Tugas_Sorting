void quickSort(List<int> arr, int left, int right) {
  if (left < right) {
    int pivotIndex = partition(arr, left, right);
    quickSort(arr, left, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, right);
  }
}

int partition(List<int> arr, int left, int right) {
  int pivot = arr[right];
  int i = left - 1;

  for (int j = left; j < right; j++) {
    if (arr[j] > pivot) {
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  int temp = arr[i + 1];
  arr[i + 1] = arr[right];
  arr[right] = temp;

  return i + 1;
}

void main() {
  List<int> data = [7, 18, 19, 21, 35,];

  print("Sebelum sorting: $data");

  DateTime start = DateTime.now();
  quickSort(data, 0, data.length - 1);
  Duration elapsedTime = DateTime.now().difference(start);

  print("Setelah sorting: $data");
  print("Waktu eksekusi: ${elapsedTime.inMilliseconds} ms");
}
