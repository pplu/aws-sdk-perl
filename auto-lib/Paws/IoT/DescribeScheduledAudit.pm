
package Paws::IoT::DescribeScheduledAudit;
  use Moose;
  has ScheduledAuditName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scheduledAuditName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledAudit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/scheduledaudits/{scheduledAuditName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeScheduledAuditResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeScheduledAudit - Arguments for method DescribeScheduledAudit on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScheduledAudit on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeScheduledAudit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScheduledAudit.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeScheduledAuditResponse = $iot->DescribeScheduledAudit(
      ScheduledAuditName => 'MyScheduledAuditName',

    );

    # Results:
    my $DayOfMonth        = $DescribeScheduledAuditResponse->DayOfMonth;
    my $DayOfWeek         = $DescribeScheduledAuditResponse->DayOfWeek;
    my $Frequency         = $DescribeScheduledAuditResponse->Frequency;
    my $ScheduledAuditArn = $DescribeScheduledAuditResponse->ScheduledAuditArn;
    my $ScheduledAuditName =
      $DescribeScheduledAuditResponse->ScheduledAuditName;
    my $TargetCheckNames = $DescribeScheduledAuditResponse->TargetCheckNames;

    # Returns a L<Paws::IoT::DescribeScheduledAuditResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeScheduledAudit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduledAuditName => Str

The name of the scheduled audit whose information you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScheduledAudit in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

