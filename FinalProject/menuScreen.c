#include "menuScreen.h"

const unsigned short menuScreenMap[1024] __attribute__((aligned(4))) =
{
    // Screenblock 0
    0x0188, 0x018C, 0x0187, 0x018D, 0x018D, 0x018B, 0x018B, 0x0189, 0x018C, 0x0187, 0x018B, 0x0187, 0x018C, 0x0188, 0x0186, 0x018D, 0x018C, 0x0189, 0x0189, 0x018D, 0x018D, 0x0186, 0x018C, 0x018C, 0x018B, 0x018A, 0x018C, 0x0189, 0x018D, 0x0188, 0x0002, 0x0000, 
    0x018D, 0x018A, 0x018C, 0x0188, 0x0187, 0x0187, 0x018C, 0x018A, 0x018B, 0x018B, 0x018C, 0x0189, 0x018A, 0x0189, 0x018D, 0x0186, 0x0187, 0x0187, 0x018B, 0x0187, 0x018C, 0x018A, 0x018C, 0x018D, 0x0187, 0x0189, 0x018D, 0x0188, 0x0188, 0x0187, 0x0002, 0x0000, 
    0x018A, 0x0186, 0x018A, 0x0189, 0x018D, 0x018B, 0x018A, 0x0187, 0x018D, 0x0186, 0x018C, 0x018C, 0x0187, 0x0187, 0x0188, 0x018C, 0x0189, 0x018A, 0x0189, 0x018A, 0x0189, 0x0186, 0x0189, 0x0186, 0x018D, 0x018C, 0x0187, 0x0188, 0x018D, 0x0189, 0x0002, 0x0000, 
    0x018B, 0x018B, 0x0188, 0x0187, 0x0186, 0x0189, 0x0188, 0x018A, 0x0189, 0x018A, 0x018D, 0x0189, 0x018D, 0x018A, 0x018C, 0x0187, 0x018B, 0x018C, 0x018D, 0x018B, 0x0187, 0x018D, 0x018D, 0x018C, 0x0189, 0x018D, 0x0188, 0x018C, 0x018A, 0x0189, 0x0002, 0x0000, 
    0x018A, 0x0186, 0x018A, 0x0187, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x0189, 0x018A, 0x0187, 0x0189, 0x0002, 0x0000, 
    0x018D, 0x018D, 0x0189, 0x018A, 0x002B, 0x00E1, 0x00E2, 0x00E3, 0x00E4, 0x00E5, 0x00E6, 0x00E7, 0x00E8, 0x00E9, 0x00EA, 0x00EB, 0x00EC, 0x00ED, 0x00EE, 0x00EF, 0x00F0, 0x00F1, 0x00F2, 0x00F3, 0x00F4, 0x002B, 0x0189, 0x018D, 0x018D, 0x0187, 0x0002, 0x0000, 
    0x018B, 0x0188, 0x018B, 0x018D, 0x002B, 0x0101, 0x0102, 0x0103, 0x0104, 0x0105, 0x0106, 0x0107, 0x0108, 0x0109, 0x010A, 0x010B, 0x010C, 0x010D, 0x010E, 0x010F, 0x0110, 0x0111, 0x0112, 0x0113, 0x0114, 0x002B, 0x018D, 0x018A, 0x0186, 0x018B, 0x0002, 0x0000, 
    0x0186, 0x0189, 0x018A, 0x0188, 0x002B, 0x0121, 0x0122, 0x0123, 0x0124, 0x0125, 0x0126, 0x0127, 0x0128, 0x0129, 0x012A, 0x012B, 0x012C, 0x012D, 0x012E, 0x012F, 0x0130, 0x0131, 0x0132, 0x0133, 0x0134, 0x0134, 0x018D, 0x0187, 0x018B, 0x0189, 0x0002, 0x0000, 
    0x018B, 0x018D, 0x0188, 0x002B, 0x002B, 0x0141, 0x0142, 0x0143, 0x0144, 0x0145, 0x0146, 0x0147, 0x0148, 0x0149, 0x014A, 0x014B, 0x014C, 0x014D, 0x014E, 0x014F, 0x0150, 0x0151, 0x0152, 0x0153, 0x0154, 0x0154, 0x002B, 0x0188, 0x0188, 0x0187, 0x0002, 0x0000, 
    0x0187, 0x0186, 0x018D, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x0188, 0x018A, 0x018C, 0x0002, 0x0000, 
    0x018B, 0x018C, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x0189, 0x018B, 0x0002, 0x0000, 
    0x0188, 0x002B, 0x002B, 0x002B, 0x002B, 0x006F, 0x0071, 0x0064, 0x0072, 0x0072, 0x002B, 0x0072, 0x0073, 0x0060, 0x0071, 0x0073, 0x002B, 0x0073, 0x006E, 0x002B, 0x006F, 0x006B, 0x0060, 0x0078, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x018B, 0x0002, 0x0000, 
    0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x0002, 0x0000, 
    0x002B, 0x006F, 0x0071, 0x0064, 0x0072, 0x0072, 0x002B, 0x0072, 0x0064, 0x006B, 0x0064, 0x0062, 0x0073, 0x002B, 0x0065, 0x006E, 0x0071, 0x002B, 0x0068, 0x006D, 0x0072, 0x0073, 0x0071, 0x0074, 0x0062, 0x0073, 0x0068, 0x006E, 0x006D, 0x0072, 0x0002, 0x0000, 
    0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x002B, 0x0002, 0x0000, 
    0x0186, 0x018A, 0x018C, 0x018A, 0x0186, 0x018B, 0x018A, 0x0189, 0x0186, 0x0188, 0x0187, 0x0187, 0x0188, 0x0189, 0x018D, 0x0187, 0x018C, 0x018A, 0x0189, 0x0186, 0x0186, 0x018C, 0x0187, 0x0187, 0x0189, 0x018A, 0x0187, 0x018C, 0x0187, 0x0187, 0x0002, 0x0000, 
    0x018C, 0x018D, 0x018C, 0x018D, 0x0187, 0x0187, 0x018B, 0x018B, 0x0187, 0x0189, 0x018B, 0x018A, 0x0186, 0x018C, 0x0189, 0x0186, 0x0189, 0x0187, 0x018C, 0x0187, 0x018B, 0x0189, 0x0188, 0x018A, 0x0188, 0x0188, 0x018B, 0x0187, 0x018D, 0x018C, 0x0002, 0x0000, 
    0x018D, 0x0187, 0x0187, 0x0187, 0x018B, 0x0189, 0x0188, 0x018A, 0x0187, 0x018D, 0x0188, 0x018C, 0x0188, 0x018B, 0x0186, 0x0188, 0x0187, 0x0187, 0x0187, 0x018A, 0x0188, 0x018B, 0x0189, 0x0186, 0x0187, 0x0188, 0x018A, 0x018B, 0x018C, 0x018D, 0x0002, 0x0000, 
    0x018C, 0x0186, 0x018A, 0x0189, 0x018C, 0x0186, 0x018B, 0x0188, 0x018B, 0x018B, 0x0189, 0x018A, 0x018B, 0x0189, 0x018A, 0x018D, 0x0186, 0x018A, 0x018D, 0x0189, 0x018C, 0x018D, 0x0189, 0x018D, 0x0188, 0x018A, 0x018D, 0x0188, 0x0189, 0x018D, 0x0002, 0x0000, 
    0x018C, 0x0189, 0x018C, 0x018B, 0x018B, 0x0188, 0x0187, 0x0187, 0x0189, 0x018C, 0x0188, 0x018C, 0x0188, 0x018D, 0x018C, 0x0187, 0x0188, 0x0187, 0x018A, 0x0186, 0x018D, 0x0189, 0x018C, 0x018D, 0x018A, 0x018C, 0x018B, 0x018C, 0x018B, 0x018D, 0x0002, 0x0000, 
    0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};
