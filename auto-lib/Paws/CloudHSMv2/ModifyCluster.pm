
package Paws::CloudHSMv2::ModifyCluster;
  use Moose;
  has BackupRetentionPolicy => (is => 'ro', isa => 'Paws::CloudHSMv2::BackupRetentionPolicy', required => 1);
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::ModifyClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::ModifyCluster - Arguments for method ModifyCluster on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCluster on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method ModifyCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCluster.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $ModifyClusterResponse = $cloudhsmv2->ModifyCluster(
      BackupRetentionPolicy => {
        Type  => 'DAYS',                      # values: DAYS; OPTIONAL
        Value => 'MyBackupRetentionValue',    # min: 1, max: 3; OPTIONAL
      },
      ClusterId => 'MyClusterId',

    );

    # Results:
    my $Cluster = $ModifyClusterResponse->Cluster;

    # Returns a L<Paws::CloudHSMv2::ModifyClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/ModifyCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupRetentionPolicy => L<Paws::CloudHSMv2::BackupRetentionPolicy>

A policy that defines how the service retains backups.



=head2 B<REQUIRED> ClusterId => Str

The identifier (ID) of the cluster that you want to modify. To find the
cluster ID, use DescribeClusters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCluster in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

