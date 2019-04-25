
package Paws::ResourceGroups::GetTags;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resources/{Arn}/tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::GetTagsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetTags - Arguments for method GetTags on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTags on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method GetTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTags.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $GetTagsOutput = $resource -groups->GetTags(
      Arn => 'MyGroupArn',

    );

    # Results:
    my $Arn  = $GetTagsOutput->Arn;
    my $Tags = $GetTagsOutput->Tags;

    # Returns a L<Paws::ResourceGroups::GetTagsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/GetTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource for which you want a list of tags. The resource
must exist within the account you are using.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTags in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

