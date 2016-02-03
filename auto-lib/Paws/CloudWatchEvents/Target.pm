package Paws::CloudWatchEvents::Target;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Input => (is => 'ro', isa => 'Str');
  has InputPath => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::Target

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::Target object:

  $service_obj->Method(Att1 => { Arn => $value, ..., InputPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::Target object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Targets are the resources that can be invoked when a rule is triggered.
For example, AWS Lambda functions, Amazon Kinesis streams, and built-in
targets.

B<Input> and B<InputPath> are mutually-exclusive and optional
parameters of a target. When a rule is triggered due to a matched
event, if for a target:

=over

=item * Neither B<Input> nor B<InputPath> is specified, then the entire
event is passed to the target in JSON form.

=item * B<InputPath> is specified in the form of JSONPath (e.g.
B<$.detail>), then only the part of the event specified in the path is
passed to the target (e.g. only the detail part of the event is
passed).

=item * B<Input> is specified in the form of a valid JSON, then the
matched event is overridden with this constant.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) associated of the target.


=head2 B<REQUIRED> Id => Str

  The unique target assignment ID.


=head2 Input => Str

  Valid JSON text passed to the target. For more information about JSON
text, see The JavaScript Object Notation (JSON) Data Interchange
Format.


=head2 InputPath => Str

  The value of the JSONPath that is used for extracting part of the
matched event when passing it to the target. For more information about
JSON paths, see JSONPath.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

