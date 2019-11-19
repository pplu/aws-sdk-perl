# Generated from json/callresult_class.tt

package Paws::CodeStar::DeleteProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw//;
  has ProjectArn => (is => 'ro', isa => Str);
  has StackId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'StackId' => 'stackId',
                       'ProjectArn' => 'projectArn'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProjectArn' => {
                                 'type' => 'Str'
                               },
               'StackId' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DeleteProjectResult

=head1 ATTRIBUTES


=head2 ProjectArn => Str

The Amazon Resource Name (ARN) of the deleted project.


=head2 StackId => Str

The ID of the primary stack in AWS CloudFormation that will be deleted
as part of deleting the project and its resources.


=head2 _request_id => Str


=cut

1;