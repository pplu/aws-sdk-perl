
package Paws::DS::DeregisterEventTopic;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has TopicName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterEventTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DeregisterEventTopicResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DeregisterEventTopic - Arguments for method DeregisterEventTopic on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterEventTopic on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DeregisterEventTopic.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterEventTopic.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DeregisterEventTopicResult = $ds->DeregisterEventTopic(
      DirectoryId => 'MyDirectoryId',
      TopicName   => 'MyTopicName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DeregisterEventTopic>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The Directory ID to remove as a publisher. This directory will no
longer send messages to the specified SNS topic.



=head2 B<REQUIRED> TopicName => Str

The name of the SNS topic from which to remove the directory as a
publisher.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterEventTopic in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

