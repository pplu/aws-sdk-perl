
package Paws::OpsWorksCM::DescribeNodeAssociationStatus;
  use Moose;
  has NodeAssociationStatusToken => (is => 'ro', isa => 'Str', required => 1);
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNodeAssociationStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::DescribeNodeAssociationStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeNodeAssociationStatus - Arguments for method DescribeNodeAssociationStatus on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNodeAssociationStatus on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method DescribeNodeAssociationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNodeAssociationStatus.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $DescribeNodeAssociationStatusResponse =
      $opsworks -cm->DescribeNodeAssociationStatus(
      NodeAssociationStatusToken => 'MyNodeAssociationStatusToken',
      ServerName                 => 'MyServerName',

      );

    # Results:
    my $EngineAttributes =
      $DescribeNodeAssociationStatusResponse->EngineAttributes;
    my $NodeAssociationStatus =
      $DescribeNodeAssociationStatusResponse->NodeAssociationStatus;

  # Returns a L<Paws::OpsWorksCM::DescribeNodeAssociationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_DescribeNodeAssociationStatus.html>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NodeAssociationStatusToken => Str

The token returned in either the AssociateNodeResponse or the
DisassociateNodeResponse.



=head2 B<REQUIRED> ServerName => Str

The name of the server from which to disassociate the node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNodeAssociationStatus in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

