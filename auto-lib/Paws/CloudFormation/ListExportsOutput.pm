# Generated from callresult_class.tt

package Paws::CloudFormation::ListExportsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_Export/;
  has Exports => (is => 'ro', isa => ArrayRef[CloudFormation_Export]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Exports' => {
                              'class' => 'Paws::CloudFormation::Export',
                              'type' => 'ArrayRef[CloudFormation_Export]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListExportsOutput

=head1 ATTRIBUTES


=head2 Exports => ArrayRef[CloudFormation_Export]

The output for the ListExports action.


=head2 NextToken => Str

If the output exceeds 100 exported output values, a string that
identifies the next page of exports. If there is no additional page,
this value is null.


=head2 _request_id => Str


=cut

