# Generated from callresult_class.tt

package Paws::IAM::GenerateCredentialReportResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'State' => {
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

Paws::IAM::GenerateCredentialReportResponse

=head1 ATTRIBUTES


=head2 Description => Str

Information about the credential report.


=head2 State => Str

Information about the state of the credential report.

Valid values are: C<"STARTED">, C<"INPROGRESS">, C<"COMPLETE">
=head2 _request_id => Str


=cut

