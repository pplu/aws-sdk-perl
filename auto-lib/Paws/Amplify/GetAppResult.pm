
package Paws::Amplify::GetAppResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_App/;
  has App => (is => 'ro', isa => Amplify_App, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'App' => 1
                  },
  'NameInRequest' => {
                       'App' => 'app'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'App' => {
                          'class' => 'Paws::Amplify::App',
                          'type' => 'Amplify_App'
                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetAppResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => Amplify_App




=head2 _request_id => Str


=cut

