
package Paws::Datasync::CreateLocationEfs;
  use Moose;
  has Ec2Config => (is => 'ro', isa => 'Paws::Datasync::Ec2Config', required => 1);
  has EfsFilesystemArn => (is => 'ro', isa => 'Str', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationEfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationEfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationEfs - Arguments for method CreateLocationEfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationEfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationEfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationEfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationEfsResponse = $datasync->CreateLocationEfs(
      Ec2Config => {
        SecurityGroupArns => [
          'MyEc2SecurityGroupArn', ...    # max: 128
        ],                                # min: 1, max: 5
        SubnetArn => 'MyEc2SubnetArn',    # max: 128

      },
      EfsFilesystemArn => 'MyEfsFilesystemArn',
      Subdirectory     => 'MySubdirectory',
      Tags             => [
        {
          Key   => 'MyTagKey',            # min: 1, max: 256; OPTIONAL
          Value => 'MyTagValue',          # min: 1, max: 256; OPTIONAL
        },
        ...
      ],                                  # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationEfsResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationEfsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationEfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ec2Config => L<Paws::Datasync::Ec2Config>

The subnet and security group that the Amazon EFS file system uses.



=head2 B<REQUIRED> EfsFilesystemArn => Str

The Amazon Resource Name (ARN) for the Amazon EFS file system.



=head2 B<REQUIRED> Subdirectory => Str

A subdirectory in the locationE<rsquo>s path. This subdirectory in the
EFS file system is used to read data from the EFS source location or
write data to the EFS destination. By default, AWS DataSync uses the
root directory.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents a tag that you want to add to the
resource. The value can be an empty string. This value helps you
manage, filter, and search for your resources. We recommend that you
create a name tag for your location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationEfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

