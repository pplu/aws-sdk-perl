
package Paws::PersonalizeEvents::PutItems;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::PersonalizeEvents::Item]', traits => ['NameInRequest'], request_name => 'items', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/items');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeEvents::PutItems - Arguments for method PutItems on L<Paws::PersonalizeEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutItems on the
L<Amazon Personalize Events|Paws::PersonalizeEvents> service. Use the attributes of this class
as arguments to method PutItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutItems.

=head1 SYNOPSIS

    my $personalize-events = Paws->service('PersonalizeEvents');
    $personalize -events->PutItems(
      DatasetArn => 'MyArn',
      Items      => [
        {
          ItemId     => 'MyStringType',        # min: 1, max: 256
          Properties => 'MyItemProperties',    # min: 1, max: 4096; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-events/PutItems>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArn => Str

The Amazon Resource Name (ARN) of the Items dataset you are adding the
item or items to.



=head2 B<REQUIRED> Items => ArrayRef[L<Paws::PersonalizeEvents::Item>]

A list of item data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutItems in L<Paws::PersonalizeEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

