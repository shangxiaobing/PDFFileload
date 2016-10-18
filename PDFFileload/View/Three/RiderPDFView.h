//
//  RiderPDFView.h
//  PDFFileload
//
//  Created by YXZT on 16/10/17.
//  Copyright © 2016年 YXZT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RiderPDFView : UIView
//写一个方法，通过Frame、已经获取到的CGPDFDocumentRef文件和需要显示的PDF文件的页码，来创建一个显示PDF文件内容的视图

- (instancetype)initWithFrame:(CGRect)frame documentRef:(CGPDFDocumentRef)docRef andPageNum:(int)page;
@end
