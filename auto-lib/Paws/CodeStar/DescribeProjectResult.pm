# Generated from json/callresult_class.tt

package Paws::CodeStar::DescribeProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw/CodeStar_ProjectStatus/;
  has Arn => (is => 'ro', isa => Str);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has CreatedTimeStamp => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ProjectTemplateId => (is => 'ro', isa => Str);
  has StackId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => CodeStar_ProjectStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'CodeStar_ProjectStatus',
                             'class' => 'Paws::CodeStar::ProjectStatus'
                           },
               'CreatedTimeStamp' => {
                                       'type' => 'Str'
                                     },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ProjectTemplateId' => {
                                        'type' => 'Str'
                                      },
               'StackId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'ClientRequestToken' => 'clientRequestToken',
                       'CreatedTimeStamp' => 'createdTimeStamp',
                       'Name' => 'name',
                       'Arn' => 'arn',
                       'Id' => 'id',
                       'Description' => 'description',
                       'StackId' => 'stackId',
                       'ProjectTemplateId' => 'projectTemplateId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DescribeProjectResult

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the project.


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested project creation.


=head2 CreatedTimeStamp => Str

The date and time the project was created, in timestamp format.


=head2 Description => Str

The description of the project, if any.


=head2 Id => Str

The ID of the project.


=head2 Name => Str

The display name for the project.


=head2 ProjectTemplateId => Str

The ID for the AWS CodeStar project template used to create the
project.


=head2 StackId => Str

The ID of the primary stack in AWS CloudFormation used to generate
resources for the project.


=head2 Status => CodeStar_ProjectStatus

The project creation or deletion status.


=head2 _request_id => Str


=cut

1;