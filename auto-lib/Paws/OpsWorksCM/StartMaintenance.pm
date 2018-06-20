
package Paws::OpsWorksCM::StartMaintenance;
  use Moose;
  has EngineAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMaintenance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::StartMaintenanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::StartMaintenance - Arguments for method StartMaintenance on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMaintenance on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method StartMaintenance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMaintenance.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $StartMaintenanceResponse = $opsworks -cm->StartMaintenance(
      ServerName       => 'MyServerName',
      EngineAttributes => [
        {
          Name  => 'MyEngineAttributeName',     # OPTIONAL
          Value => 'MyEngineAttributeValue',    # OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
    );

    # Results:
    my $Server = $StartMaintenanceResponse->Server;

    # Returns a L<Paws::OpsWorksCM::StartMaintenanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_StartMaintenance.html>

=head1 ATTRIBUTES


=head2 EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

Engine attributes that are specific to the server on which you want to
run maintenance.



=head2 B<REQUIRED> ServerName => Str

The name of the server on which to run maintenance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMaintenance in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

