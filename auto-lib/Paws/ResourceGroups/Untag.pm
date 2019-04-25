
package Paws::ResourceGroups::Untag;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Arn', required => 1);
  has Keys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Untag');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resources/{Arn}/tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::UntagOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::Untag - Arguments for method Untag on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Untag on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method Untag.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Untag.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $UntagOutput = $resource -groups->Untag(
      Arn  => 'MyGroupArn',
      Keys => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

    # Results:
    my $Arn  = $UntagOutput->Arn;
    my $Keys = $UntagOutput->Keys;

    # Returns a L<Paws::ResourceGroups::UntagOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/Untag>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource from which to remove tags.



=head2 B<REQUIRED> Keys => ArrayRef[Str|Undef]

The keys of the tags to be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Untag in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

