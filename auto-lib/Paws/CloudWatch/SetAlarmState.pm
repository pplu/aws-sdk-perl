
package Paws::CloudWatch::SetAlarmState;
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has StateReason => (is => 'ro', isa => 'Str', required => 1);
  has StateReasonData => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetAlarmState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::SetAlarmState - Arguments for method SetAlarmState on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetAlarmState on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method SetAlarmState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetAlarmState.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    $monitoring->SetAlarmState(
      AlarmName       => 'MyAlarmName',
      StateReason     => 'MyStateReason',
      StateValue      => 'OK',
      StateReasonData => 'MyStateReasonData',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/SetAlarmState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmName => Str

The name for the alarm. This name must be unique within the AWS
account. The maximum length is 255 characters.



=head2 B<REQUIRED> StateReason => Str

The reason that this alarm is set to this specific state, in text
format.



=head2 StateReasonData => Str

The reason that this alarm is set to this specific state, in JSON
format.



=head2 B<REQUIRED> StateValue => Str

The value of the state.

Valid values are: C<"OK">, C<"ALARM">, C<"INSUFFICIENT_DATA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetAlarmState in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

