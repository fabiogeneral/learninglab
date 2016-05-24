//
//  TargetsTableTableViewController.m
//  LearningLab
//
//  Created by Fabio General on 5/12/16.
//  Copyright © 2016 fabiogeneral. All rights reserved.
//

#import "TargetsTableViewController.h"

@interface TargetsTableViewController ()

@property (nonatomic) NSDictionary *targets;
@property (nonatomic) NSArray *sections;

@end

@implementation TargetsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.targets = @{
                     @"Cognitivo" : @[@"leitura e compreensão", @"refação de exercícios de matemática", @"grifo", @"síntese em tópicos", @"registros marginais", @"síntese em texto", @"mapa conceitual", @"tabela", @"enunciados e respostas", @"atenção", @"execução", @"penúltimo indicador cognitivo", @"último indicador cognitivo"],
                     @"Comportamental" : @[@"organização ambiental", @"organização do material", @"agenda", @"rotina e cronograma", @"cadernos de estudos escolares", @"registros de própria autoria", @"dúvidas nas aulas", @"lições de casa", @"caderno de estudo pessoal", @"estudo diário", @"releitura da matéria ministrada", @"busca por respostas", @"anotação de dúvidas"],
                     @"Emocional" : @[@"auto estima", @"segurança", @"auto controle", @"motivação"]};
    
    self.sections = [[self.targets allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sections.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [self.sections objectAtIndex:section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *sectionTitle = [self.sections objectAtIndex:section];
    NSArray *sectionTargets = [self.targets objectForKey:sectionTitle];
    return [sectionTargets count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 15;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView* headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 32)];
    headerView.backgroundColor = [UIColor grayColor];
    
    UILabel* headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,headerView.frame.size.height-40, tableView.frame.size.width - 5, 30)];
    headerLabel.textColor = [UIColor whiteColor];
    headerLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:9.0];
    
    if (section == 0) {
        headerLabel.text = @"Cognitivo";
    } else if(section == 1) {
        headerLabel.text = @"Comportamental";
    } else if (section == 2) {
        headerLabel.text = @"Emocional";
    }
    
    [headerView addSubview:headerLabel];
    
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"targets" forIndexPath:indexPath];
    
    NSString *sectionTitle = [self.sections objectAtIndex:indexPath.section];
    NSArray *sectionTargets = [self.targets objectForKey:sectionTitle];
    NSString *target = [sectionTargets objectAtIndex:indexPath.row];
    cell.textLabel.text = target;
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:13.0];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:8.5];
    cell.detailTextLabel.textColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor blueColor];
    
    UIView* separatorLineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 5)];
    separatorLineView.backgroundColor = [UIColor whiteColor];
    [cell.contentView addSubview:separatorLineView];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
