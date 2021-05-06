
package Paws::CloudWatch::PutDashboard;
  use Moose;
  has DashboardBody => (is => 'ro', isa => 'Str', required => 1);
  has DashboardName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDashboard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::PutDashboardOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutDashboardResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutDashboard - Arguments for method PutDashboard on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDashboard on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDashboard.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $PutDashboardOutput = $monitoring->PutDashboard(
      DashboardBody => 'MyDashboardBody',
      DashboardName => 'MyDashboardName',

    );

    # Results:
    my $DashboardValidationMessages =
      $PutDashboardOutput->DashboardValidationMessages;

    # Returns a L<Paws::CloudWatch::PutDashboardOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardBody => Str

The detailed information about the dashboard in JSON format, including
the widgets to include and their location on the dashboard. This
parameter is required.

For more information about the syntax, see
CloudWatch-Dashboard-Body-Structure.



=head2 B<REQUIRED> DashboardName => Str

The name of the dashboard. If a dashboard with this name already
exists, this call modifies that dashboard, replacing its current
contents. Otherwise, a new dashboard is created. The maximum length is
255, and valid characters are A-Z, a-z, 0-9, "-", and "_". This
parameter is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDashboard in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

