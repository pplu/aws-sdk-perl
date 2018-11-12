package Paws::CloudWatchEvents::InputTransformer;
  use Moose;
  has InputPathsMap => (is => 'ro', isa => 'Paws::CloudWatchEvents::TransformerPaths');
  has InputTemplate => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::InputTransformer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::InputTransformer object:

  $service_obj->Method(Att1 => { InputPathsMap => $value, ..., InputTemplate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::InputTransformer object:

  $result = $service_obj->Method(...);
  $result->Att1->InputPathsMap

=head1 DESCRIPTION

Contains the parameters needed for you to provide custom input to a
target based on one or more pieces of data extracted from the event.

=head1 ATTRIBUTES


=head2 InputPathsMap => L<Paws::CloudWatchEvents::TransformerPaths>

  Map of JSON paths to be extracted from the event. You can then insert
these in the template in C<InputTemplate> to produce the output you
want to be sent to the target.

C<InputPathsMap> is an array key-value pairs, where each value is a
valid JSON path. You can have as many as 10 key-value pairs. You must
use JSON dot notation, not bracket notation.

The keys cannot start with "AWS."


=head2 B<REQUIRED> InputTemplate => Str

  Input template where you specify placeholders that will be filled with
the values of the keys from C<InputPathsMap> to customize the data sent
to the target. Enclose each C<InputPathsMaps> value in brackets:
E<lt>I<value>E<gt> The InputTemplate must be valid JSON.

If C<InputTemplate> is a JSON object (surrounded by curly braces), the
following restrictions apply:

=over

=item *

The placeholder cannot be used as an object key.

=item *

Object values cannot include quote marks.

=back

The following example shows the syntax for using C<InputPathsMap> and
C<InputTemplate>.

C<"InputTransformer":>

C<{>

C<"InputPathsMap": {"instance": "$.detail.instance","status":
"$.detail.status"},>

C<"InputTemplate": "E<lt>instanceE<gt> is in state E<lt>statusE<gt>">

C<}>

To have the C<InputTemplate> include quote marks within a JSON string,
escape each quote marks with a slash, as in the following example:

C<"InputTransformer":>

C<{>

C<"InputPathsMap": {"instance": "$.detail.instance","status":
"$.detail.status"},>

C<"InputTemplate": "E<lt>instanceE<gt> is in state
\"E<lt>statusE<gt>\"">

C<}>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

