# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListApplicationsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has Applications => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Applications' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Applications' => 'applications'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplicationsOutput

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[Str|Undef]

A list of application names.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list applications call to
return the next set of applications in the list.


=head2 _request_id => Str


=cut

1;