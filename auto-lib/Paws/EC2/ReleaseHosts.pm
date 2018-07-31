
package Paws::EC2::ReleaseHosts;
  use Moose;
  has HostIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'hostId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReleaseHosts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ReleaseHostsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReleaseHosts - Arguments for method ReleaseHosts on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReleaseHosts on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReleaseHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReleaseHosts.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ReleaseHostsResult = $ec2->ReleaseHosts(
      HostIds => [ 'MyString', ... ],

    );

    # Results:
    my $Successful   = $ReleaseHostsResult->Successful;
    my $Unsuccessful = $ReleaseHostsResult->Unsuccessful;

    # Returns a L<Paws::EC2::ReleaseHostsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReleaseHosts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostIds => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts to release.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReleaseHosts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

