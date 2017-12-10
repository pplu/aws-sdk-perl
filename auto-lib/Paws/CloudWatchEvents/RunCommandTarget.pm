package Paws::CloudWatchEvents::RunCommandTarget;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::RunCommandTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::RunCommandTarget object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::RunCommandTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Information about the EC2 instances that are to be sent the command,
specified as key-value pairs. Each C<RunCommandTarget> block can
include only one key, but this key may specify multiple values.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  Can be either C<tag:> I<tag-key> or C<InstanceIds>.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  If C<Key> is C<tag:> I<tag-key>, C<Values> is a list of tag values. If
C<Key> is C<InstanceIds>, C<Values> is a list of Amazon EC2 instance
IDs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

