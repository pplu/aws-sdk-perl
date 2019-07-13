
package Paws::Greengrass::GetGroupVersion;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);
  has GroupVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupVersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/versions/{GroupVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetGroupVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetGroupVersion - Arguments for method GetGroupVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroupVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetGroupVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroupVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetGroupVersionResponse = $greengrass->GetGroupVersion(
      GroupId        => 'My__string',
      GroupVersionId => 'My__string',

    );

    # Results:
    my $Arn               = $GetGroupVersionResponse->Arn;
    my $CreationTimestamp = $GetGroupVersionResponse->CreationTimestamp;
    my $Definition        = $GetGroupVersionResponse->Definition;
    my $Id                = $GetGroupVersionResponse->Id;
    my $Version           = $GetGroupVersionResponse->Version;

    # Returns a L<Paws::Greengrass::GetGroupVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetGroupVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.



=head2 B<REQUIRED> GroupVersionId => Str

The ID of the group version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroupVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

