# Generated from default/object.tt
package Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw//;
  has Control => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Input => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has StartToCloseTimeout => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartToCloseTimeout' => {
                                          'type' => 'Str'
                                        },
               'Id' => {
                         'type' => 'Str'
                       },
               'Control' => {
                              'type' => 'Str'
                            },
               'Input' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'StartToCloseTimeout' => 'startToCloseTimeout',
                       'Id' => 'id',
                       'Control' => 'control',
                       'Input' => 'input',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Id' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes object:

  $service_obj->Method(Att1 => { Control => $value, ..., StartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ScheduleLambdaFunctionDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Control

=head1 DESCRIPTION

Decision attributes specified in
C<scheduleLambdaFunctionDecisionAttributes> within the list of
decisions C<decisions> passed to RespondDecisionTaskCompleted.

=head1 ATTRIBUTES


=head2 Control => Str

  The data attached to the event that the decider can use in subsequent
workflow tasks. This data isn't sent to the Lambda task.


=head2 B<REQUIRED> Id => Str

  A string that identifies the Lambda function execution in the event
history.


=head2 Input => Str

  The optional input data to be supplied to the Lambda function.


=head2 B<REQUIRED> Name => Str

  The name, or ARN, of the Lambda function to schedule.


=head2 StartToCloseTimeout => Str

  The timeout value, in seconds, after which the Lambda function is
considered to be failed once it has started. This can be any integer
from 1-300 (1s-5m). If no value is supplied, than a default value of
300s is assumed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

