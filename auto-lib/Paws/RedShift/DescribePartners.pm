
package Paws::RedShift::DescribePartners;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str');
  has PartnerName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePartners');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DescribePartnersOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePartnersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribePartners - Arguments for method DescribePartners on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePartners on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribePartners.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePartners.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DescribePartnersOutputMessage = $redshift->DescribePartners(
      AccountId         => 'MyPartnerIntegrationAccountId',
      ClusterIdentifier => 'MyPartnerIntegrationClusterIdentifier',
      DatabaseName      => 'MyPartnerIntegrationDatabaseName',        # OPTIONAL
      PartnerName       => 'MyPartnerIntegrationPartnerName',         # OPTIONAL
    );

    # Results:
    my $PartnerIntegrationInfoList =
      $DescribePartnersOutputMessage->PartnerIntegrationInfoList;

    # Returns a L<Paws::RedShift::DescribePartnersOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribePartners>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID that owns the cluster.



=head2 B<REQUIRED> ClusterIdentifier => Str

The cluster identifier of the cluster whose partner integration is
being described.



=head2 DatabaseName => Str

The name of the database whose partner integration is being described.
If database name is not specified, then all databases in the cluster
are described.



=head2 PartnerName => Str

The name of the partner that is being described. If partner name is not
specified, then all partner integrations are described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePartners in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

