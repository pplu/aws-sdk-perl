
package Paws::Amplify::GetJobResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_Job/;
  has Job => (is => 'ro', isa => Amplify_Job, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Job' => {
                          'class' => 'Paws::Amplify::Job',
                          'type' => 'Amplify_Job'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Job' => 'job'
                     },
  'IsRequired' => {
                    'Job' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetJobResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Job => Amplify_Job




=head2 _request_id => Str


=cut

