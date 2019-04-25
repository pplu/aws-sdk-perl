
package Paws::CloudTrail::AddTags;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagsList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::AddTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::AddTags - Arguments for method AddTags on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTags on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method AddTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTags.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $AddTagsResponse = $cloudtrail->AddTags(
      ResourceId => 'MyString',
      TagsList   => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/AddTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

Specifies the ARN of the trail to which one or more tags will be added.
The format of a trail ARN is:

C<arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail>



=head2 TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]

Contains a list of CloudTrail tags, up to a limit of 50




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTags in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

