//
//  ZPDFPageController.h
//  pdfReader
//
//  Created by YXZT on 16/10/17.
//  Copyright © 2016年 YXZT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PDFPageController : UIViewController
// CGPDFDocumentRef pdfDocument;
@property (assign, nonatomic) CGPDFDocumentRef pdfDocument;
@property (assign, nonatomic) NSInteger pageNO;

@end
