
package Paws::Backup::DescribeProtectedResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProtectedResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resources/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DescribeProtectedResourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeProtectedResource - Arguments for method DescribeProtectedResource on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProtectedResource on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DescribeProtectedResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProtectedResource.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DescribeProtectedResourceOutput = $backup->DescribeProtectedResource(
      ResourceArn => 'MyARN',

    );

    # Results:
    my $LastBackupTime = $DescribeProtectedResourceOutput->LastBackupTime;
    my $ResourceArn    = $DescribeProtectedResourceOutput->ResourceArn;
    my $ResourceType   = $DescribeProtectedResourceOutput->ResourceType;

    # Returns a L<Paws::Backup::DescribeProtectedResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DescribeProtectedResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProtectedResource in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

