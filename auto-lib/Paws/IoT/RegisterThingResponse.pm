
package Paws::IoT::RegisterThingResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_ResourceArns/;
  has CertificatePem => (is => 'ro', isa => Str);
  has ResourceArns => (is => 'ro', isa => IoT_ResourceArns);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArns' => {
                                   'class' => 'Paws::IoT::ResourceArns',
                                   'type' => 'IoT_ResourceArns'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CertificatePem' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'ResourceArns' => 'resourceArns',
                       'CertificatePem' => 'certificatePem'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterThingResponse

=head1 ATTRIBUTES


=head2 CertificatePem => Str

.


=head2 ResourceArns => IoT_ResourceArns

ARNs for the generated resources.


=head2 _request_id => Str


=cut

