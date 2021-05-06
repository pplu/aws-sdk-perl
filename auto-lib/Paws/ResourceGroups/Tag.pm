
package Paws::ResourceGroups::Tag;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Arn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ResourceGroups::Tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Tag');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resources/{Arn}/tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::TagOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::Tag - Arguments for method Tag on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Tag on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method Tag.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Tag.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $TagOutput = $resource -groups->Tag(
      Arn  => 'MyGroupArn',
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

    # Results:
    my $Arn  = $TagOutput->Arn;
    my $Tags = $TagOutput->Tags;

    # Returns a L<Paws::ResourceGroups::TagOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/Tag>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource to which to add tags.



=head2 B<REQUIRED> Tags => L<Paws::ResourceGroups::Tags>

The tags to add to the specified resource. A tag is a string-to-string
map of key-value pairs. Tag keys can have a maximum character length of
128 characters, and tag values can have a maximum length of 256
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Tag in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

