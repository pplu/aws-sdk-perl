
package Paws::WorkMail::DescribeResource;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DescribeResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeResource - Arguments for method DescribeResource on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResource on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DescribeResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResource.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DescribeResourceResponse = $workmail->DescribeResource(
      OrganizationId => 'MyOrganizationId',
      ResourceId     => 'MyResourceId',

    );

    # Results:
    my $BookingOptions = $DescribeResourceResponse->BookingOptions;
    my $DisabledDate   = $DescribeResourceResponse->DisabledDate;
    my $Email          = $DescribeResourceResponse->Email;
    my $EnabledDate    = $DescribeResourceResponse->EnabledDate;
    my $Name           = $DescribeResourceResponse->Name;
    my $ResourceId     = $DescribeResourceResponse->ResourceId;
    my $State          = $DescribeResourceResponse->State;
    my $Type           = $DescribeResourceResponse->Type;

    # Returns a L<Paws::WorkMail::DescribeResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DescribeResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The identifier associated with the organization for which the resource
is described.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResource in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

