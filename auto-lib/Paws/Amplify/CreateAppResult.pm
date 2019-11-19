
package Paws::Amplify::CreateAppResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_App/;
  has App => (is => 'ro', isa => Amplify_App, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'App' => {
                          'class' => 'Paws::Amplify::App',
                          'type' => 'Amplify_App'
                        }
             },
  'NameInRequest' => {
                       'App' => 'app'
                     },
  'IsRequired' => {
                    'App' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateAppResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => Amplify_App




=head2 _request_id => Str


=cut

