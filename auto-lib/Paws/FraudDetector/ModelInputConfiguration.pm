# Generated by default/object.tt
package Paws::FraudDetector::ModelInputConfiguration;
  use Moose;
  has CsvInputTemplate => (is => 'ro', isa => 'Str', request_name => 'csvInputTemplate', traits => ['NameInRequest']);
  has EventTypeName => (is => 'ro', isa => 'Str', request_name => 'eventTypeName', traits => ['NameInRequest']);
  has Format => (is => 'ro', isa => 'Str', request_name => 'format', traits => ['NameInRequest']);
  has JsonInputTemplate => (is => 'ro', isa => 'Str', request_name => 'jsonInputTemplate', traits => ['NameInRequest']);
  has UseEventVariables => (is => 'ro', isa => 'Bool', request_name => 'useEventVariables', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ModelInputConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::ModelInputConfiguration object:

  $service_obj->Method(Att1 => { CsvInputTemplate => $value, ..., UseEventVariables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::ModelInputConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CsvInputTemplate

=head1 DESCRIPTION

The Amazon SageMaker model input configuration.

=head1 ATTRIBUTES


=head2 CsvInputTemplate => Str

Template for constructing the CSV input-data sent to SageMaker. At
event-evaluation, the placeholders for variable-names in the template
will be replaced with the variable values before being sent to
SageMaker.


=head2 EventTypeName => Str

The event type name.


=head2 Format => Str

The format of the model input configuration. The format differs
depending on if it is passed through to SageMaker or constructed by
Amazon Fraud Detector.


=head2 JsonInputTemplate => Str

Template for constructing the JSON input-data sent to SageMaker. At
event-evaluation, the placeholders for variable names in the template
will be replaced with the variable values before being sent to
SageMaker.


=head2 B<REQUIRED> UseEventVariables => Bool

The event variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

