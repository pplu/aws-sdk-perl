# Generated from default/object.tt
package Paws::Amplify::Step;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_Screenshots/;
  has ArtifactsUrl => (is => 'ro', isa => Str);
  has Context => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str, required => 1);
  has LogUrl => (is => 'ro', isa => Str);
  has Screenshots => (is => 'ro', isa => Amplify_Screenshots);
  has StartTime => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has StatusReason => (is => 'ro', isa => Str);
  has StepName => (is => 'ro', isa => Str, required => 1);
  has TestArtifactsUrl => (is => 'ro', isa => Str);
  has TestConfigUrl => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Screenshots' => 'screenshots',
                       'LogUrl' => 'logUrl',
                       'ArtifactsUrl' => 'artifactsUrl',
                       'TestArtifactsUrl' => 'testArtifactsUrl',
                       'StatusReason' => 'statusReason',
                       'StepName' => 'stepName',
                       'TestConfigUrl' => 'testConfigUrl',
                       'Context' => 'context',
                       'Status' => 'status',
                       'StartTime' => 'startTime',
                       'EndTime' => 'endTime'
                     },
  'IsRequired' => {
                    'Status' => 1,
                    'StartTime' => 1,
                    'EndTime' => 1,
                    'StepName' => 1
                  },
  'types' => {
               'StepName' => {
                               'type' => 'Str'
                             },
               'TestConfigUrl' => {
                                    'type' => 'Str'
                                  },
               'Context' => {
                              'type' => 'Str'
                            },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Screenshots' => {
                                  'type' => 'Amplify_Screenshots',
                                  'class' => 'Paws::Amplify::Screenshots'
                                },
               'LogUrl' => {
                             'type' => 'Str'
                           },
               'TestArtifactsUrl' => {
                                       'type' => 'Str'
                                     },
               'ArtifactsUrl' => {
                                   'type' => 'Str'
                                 },
               'StatusReason' => {
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

Paws::Amplify::Step

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::Step object:

  $service_obj->Method(Att1 => { ArtifactsUrl => $value, ..., TestConfigUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::Step object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactsUrl

=head1 DESCRIPTION

Structure for an execution step for an execution job, for an Amplify
App.

=head1 ATTRIBUTES


=head2 ArtifactsUrl => Str

  URL to the artifact for the execution step.


=head2 Context => Str

  The context for current step, will include build image if step is
build.


=head2 B<REQUIRED> EndTime => Str

  End date/ time of the execution step.


=head2 LogUrl => Str

  URL to the logs for the execution step.


=head2 Screenshots => Amplify_Screenshots

  List of screenshot URLs for the execution step, if relevant.


=head2 B<REQUIRED> StartTime => Str

  Start date/ time of the execution step.


=head2 B<REQUIRED> Status => Str

  Status of the execution step.


=head2 StatusReason => Str

  The reason for current step status.


=head2 B<REQUIRED> StepName => Str

  Name of the execution step.


=head2 TestArtifactsUrl => Str

  URL to the test artifact for the execution step.


=head2 TestConfigUrl => Str

  URL to the test config for the execution step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

