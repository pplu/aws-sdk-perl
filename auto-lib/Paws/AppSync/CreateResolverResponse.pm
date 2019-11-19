
package Paws::AppSync::CreateResolverResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_Resolver/;
  has Resolver => (is => 'ro', isa => AppSync_Resolver);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Resolver' => 'resolver'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Resolver' => {
                               'type' => 'AppSync_Resolver',
                               'class' => 'Paws::AppSync::Resolver'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateResolverResponse

=head1 ATTRIBUTES


=head2 Resolver => AppSync_Resolver

The C<Resolver> object.


=head2 _request_id => Str


=cut

