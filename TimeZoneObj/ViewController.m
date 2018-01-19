//
//  ViewController.m
//  TimeZoneObj
//
//  Created by Miguel Mexicano on 17/01/18.
//  Copyright © 2018 Miguel Mexicano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDate *fecha = [[NSDate alloc] init];
    
    
    
    NSString *MexicoDF = @"America/Mexico_City";
    NSString *AsiaBahrain = @"Asia/Bahrain";
    NSString *Chihuahua = @"America/Chihuahua";
    NSString *Cancun = @"America/Cancun";
    
    
    
    NSLog(@"Hora %@: %@",MexicoDF,[self changeHourTimeZone:fecha TimeZone: MexicoDF]);//GMT-6
    NSLog(@"Hora %@: %@",AsiaBahrain,[self changeHourTimeZone:fecha TimeZone: AsiaBahrain]);//GMT+3
    NSLog(@"Hora %@: %@",Chihuahua,[self changeHourTimeZone:fecha TimeZone: Chihuahua]);//GMT-7
    NSLog(@"Hora %@: %@",Cancun,[self changeHourTimeZone:fecha TimeZone: Cancun]); //GMT-5

}



-(NSString *)changeHourTimeZone: (NSDate *) date TimeZone: (NSString *) strTimeZone{
    
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName: strTimeZone];
    
    NSDateFormatter *formatt = [[NSDateFormatter alloc] init];
    [formatt setTimeZone: timeZone];
    [formatt setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *strDate = [formatt stringFromDate:date];
    
    return strDate;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
