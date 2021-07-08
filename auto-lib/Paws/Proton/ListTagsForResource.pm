
package Paws::Proton::ListTagsForResource;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListTagsForResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListTagsForResourceOutput = $proton->ListTagsForResource(
      ResourceArn => 'MyArn',
      MaxResults  => 1,             # OPTIONAL
      NextToken   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceOutput->NextToken;
    my $Tags      = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::Proton::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListTagsForResource>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of tags to list.



=head2 NextToken => Str

A token to indicate the location of the next resource tag in the array
of resource tags, after the list of resource tags that was previously
requested.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource for the listed tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

