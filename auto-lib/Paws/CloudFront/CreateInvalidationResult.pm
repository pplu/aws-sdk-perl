
package Paws::CloudFront::CreateInvalidationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_Invalidation/;
  has Invalidation => (is => 'ro', isa => CloudFront_Invalidation);
  has Location => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Invalidation' => {
                                   'class' => 'Paws::CloudFront::Invalidation',
                                   'type' => 'CloudFront_Invalidation'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             }
             },
  'ParamInHeader' => {
                       'Location' => 'Location'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateInvalidationResult

=head1 ATTRIBUTES


=head2 Invalidation => CloudFront_Invalidation

The invalidation's information.



=head2 Location => Str

The fully qualified URI of the distribution and invalidation batch
request, including the C<Invalidation ID>.




=cut

