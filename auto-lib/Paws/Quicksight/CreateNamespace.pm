
package Paws::Quicksight::CreateNamespace;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has IdentityStore => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateNamespace - Arguments for method CreateNamespace on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNamespace on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNamespace.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateNamespaceResponse = $quicksight->CreateNamespace(
      AwsAccountId  => 'MyAwsAccountId',
      IdentityStore => 'QUICKSIGHT',
      Namespace     => 'MyNamespace',
      Tags          => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $Arn            = $CreateNamespaceResponse->Arn;
    my $CapacityRegion = $CreateNamespaceResponse->CapacityRegion;
    my $CreationStatus = $CreateNamespaceResponse->CreationStatus;
    my $IdentityStore  = $CreateNamespaceResponse->IdentityStore;
    my $Name           = $CreateNamespaceResponse->Name;
    my $RequestId      = $CreateNamespaceResponse->RequestId;
    my $Status         = $CreateNamespaceResponse->Status;

    # Returns a L<Paws::Quicksight::CreateNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that you want to create the QuickSight
namespace in.



=head2 B<REQUIRED> IdentityStore => Str

Specifies the type of your user identity directory. Currently, this
supports users with an identity type of C<QUICKSIGHT>.

Valid values are: C<"QUICKSIGHT">

=head2 B<REQUIRED> Namespace => Str

The name that you want to use to describe the new namespace.



=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

The tags that you want to associate with the namespace that you're
creating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNamespace in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

