
package Paws::ES::AddTags;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::ES::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::AddTags - Arguments for method AddTags on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTags on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method AddTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTags.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    $es->AddTags(
      ARN     => 'MyARN',
      TagList => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/AddTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ARN => Str

Specify the C<ARN> for which you want to add the tags.



=head2 B<REQUIRED> TagList => ArrayRef[L<Paws::ES::Tag>]

List of C<Tag> that need to be added for the Elasticsearch domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTags in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

