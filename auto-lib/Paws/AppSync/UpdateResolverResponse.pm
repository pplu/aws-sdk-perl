
package Paws::AppSync::UpdateResolverResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_Resolver/;
  has Resolver => (is => 'ro', isa => AppSync_Resolver);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Resolver' => {
                               'class' => 'Paws::AppSync::Resolver',
                               'type' => 'AppSync_Resolver'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Resolver' => 'resolver'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateResolverResponse

=head1 ATTRIBUTES


=head2 Resolver => AppSync_Resolver

The updated C<Resolver> object.


=head2 _request_id => Str


=cut

