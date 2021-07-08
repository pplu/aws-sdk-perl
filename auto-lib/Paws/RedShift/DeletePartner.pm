
package Paws::RedShift::DeletePartner;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartnerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePartner');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::PartnerIntegrationOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePartnerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeletePartner - Arguments for method DeletePartner on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePartner on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeletePartner.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePartner.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $PartnerIntegrationOutputMessage = $redshift->DeletePartner(
      AccountId         => 'MyPartnerIntegrationAccountId',
      ClusterIdentifier => 'MyPartnerIntegrationClusterIdentifier',
      DatabaseName      => 'MyPartnerIntegrationDatabaseName',
      PartnerName       => 'MyPartnerIntegrationPartnerName',

    );

    # Results:
    my $DatabaseName = $PartnerIntegrationOutputMessage->DatabaseName;
    my $PartnerName  = $PartnerIntegrationOutputMessage->PartnerName;

    # Returns a L<Paws::RedShift::PartnerIntegrationOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeletePartner>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID that owns the cluster.



=head2 B<REQUIRED> ClusterIdentifier => Str

The cluster identifier of the cluster that receives data from the
partner.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database that receives data from the partner.



=head2 B<REQUIRED> PartnerName => Str

The name of the partner that is authorized to send data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePartner in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

