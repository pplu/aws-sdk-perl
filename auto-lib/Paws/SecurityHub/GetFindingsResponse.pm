
package Paws::SecurityHub::GetFindingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_AwsSecurityFinding/;
  has Findings => (is => 'ro', isa => ArrayRef[SecurityHub_AwsSecurityFinding], required => 1);
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
               'Findings' => {
                               'class' => 'Paws::SecurityHub::AwsSecurityFinding',
                               'type' => 'ArrayRef[SecurityHub_AwsSecurityFinding]'
                             }
             },
  'IsRequired' => {
                    'Findings' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[SecurityHub_AwsSecurityFinding]

The findings that matched the filters specified in the request.


=head2 NextToken => Str

The token that is required for pagination.


=head2 _request_id => Str


=cut

