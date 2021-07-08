
package Paws::DS::AddRegion;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has RegionName => (is => 'ro', isa => 'Str', required => 1);
  has VPCSettings => (is => 'ro', isa => 'Paws::DS::DirectoryVpcSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddRegion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::AddRegionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::AddRegion - Arguments for method AddRegion on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddRegion on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method AddRegion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddRegion.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $AddRegionResult = $ds->AddRegion(
      DirectoryId => 'MyDirectoryId',
      RegionName  => 'MyRegionName',
      VPCSettings => {
        SubnetIds => [ 'MySubnetId', ... ],
        VpcId     => 'MyVpcId',

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/AddRegion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory to which you want to add Region
replication.



=head2 B<REQUIRED> RegionName => Str

The name of the Region where you want to add domain controllers for
replication. For example, C<us-east-1>.



=head2 B<REQUIRED> VPCSettings => L<Paws::DS::DirectoryVpcSettings>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddRegion in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

