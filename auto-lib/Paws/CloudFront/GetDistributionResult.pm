
package Paws::CloudFront::GetDistributionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_Distribution/;
  has Distribution => (is => 'ro', isa => CloudFront_Distribution);
  has ETag => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Distribution' => {
                                   'type' => 'CloudFront_Distribution',
                                   'class' => 'Paws::CloudFront::Distribution'
                                 },
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInHeader' => {
                       'ETag' => 'ETag'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetDistributionResult

=head1 ATTRIBUTES


=head2 Distribution => CloudFront_Distribution

The distribution's information.



=head2 ETag => Str

The current version of the distribution's information. For example:
C<E2QWRUHAPOMQZL>.




=cut

