
package Paws::IoT::UpdateScheduledAudit;
  use Moose;
  has DayOfMonth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dayOfMonth');
  has DayOfWeek => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dayOfWeek');
  has Frequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'frequency');
  has ScheduledAuditName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scheduledAuditName', required => 1);
  has TargetCheckNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetCheckNames');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScheduledAudit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/scheduledaudits/{scheduledAuditName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateScheduledAuditResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateScheduledAudit - Arguments for method UpdateScheduledAudit on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScheduledAudit on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateScheduledAudit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScheduledAudit.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateScheduledAuditResponse = $iot->UpdateScheduledAudit(
      ScheduledAuditName => 'MyScheduledAuditName',
      DayOfMonth         => 'MyDayOfMonth',                 # OPTIONAL
      DayOfWeek          => 'SUN',                          # OPTIONAL
      Frequency          => 'DAILY',                        # OPTIONAL
      TargetCheckNames   => [ 'MyAuditCheckName', ... ],    # OPTIONAL
    );

    # Results:
    my $ScheduledAuditArn = $UpdateScheduledAuditResponse->ScheduledAuditArn;

    # Returns a L<Paws::IoT::UpdateScheduledAuditResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateScheduledAudit>

=head1 ATTRIBUTES


=head2 DayOfMonth => Str

The day of the month on which the scheduled audit takes place. Can be
"1" through "31" or "LAST". This field is required if the "frequency"
parameter is set to "MONTHLY". If days 29-31 are specified, and the
month does not have that many days, the audit takes place on the "LAST"
day of the month.



=head2 DayOfWeek => Str

The day of the week on which the scheduled audit takes place. Can be
one of "SUN", "MON", "TUE", "WED", "THU", "FRI" or "SAT". This field is
required if the "frequency" parameter is set to "WEEKLY" or "BIWEEKLY".

Valid values are: C<"SUN">, C<"MON">, C<"TUE">, C<"WED">, C<"THU">, C<"FRI">, C<"SAT">

=head2 Frequency => Str

How often the scheduled audit takes place. Can be one of "DAILY",
"WEEKLY", "BIWEEKLY" or "MONTHLY". The actual start time of each audit
is determined by the system.

Valid values are: C<"DAILY">, C<"WEEKLY">, C<"BIWEEKLY">, C<"MONTHLY">

=head2 B<REQUIRED> ScheduledAuditName => Str

The name of the scheduled audit. (Max. 128 chars)



=head2 TargetCheckNames => ArrayRef[Str|Undef]

Which checks are performed during the scheduled audit. Checks must be
enabled for your account. (Use C<DescribeAccountAuditConfiguration> to
see the list of all checks including those that are enabled or
C<UpdateAccountAuditConfiguration> to select which checks are enabled.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScheduledAudit in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

