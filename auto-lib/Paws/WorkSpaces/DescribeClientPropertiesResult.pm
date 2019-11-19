# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeClientPropertiesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_ClientPropertiesResult/;
  has ClientPropertiesList => (is => 'ro', isa => ArrayRef[WorkSpaces_ClientPropertiesResult]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClientPropertiesList' => {
                                           'type' => 'ArrayRef[WorkSpaces_ClientPropertiesResult]',
                                           'class' => 'Paws::WorkSpaces::ClientPropertiesResult'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeClientPropertiesResult

=head1 ATTRIBUTES


=head2 ClientPropertiesList => ArrayRef[WorkSpaces_ClientPropertiesResult]

Information about the specified Amazon WorkSpaces clients.


=head2 _request_id => Str


=cut

1;