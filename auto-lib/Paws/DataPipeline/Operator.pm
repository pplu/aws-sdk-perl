package Paws::DataPipeline::Operator;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::Operator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::Operator object:

  $service_obj->Method(Att1 => { Type => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::Operator object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

Contains a logical operation for comparing the value of a field with a
specified value.

=head1 ATTRIBUTES


=head2 Type => Str

  The logical operation to be performed: equal (C<EQ>), equal reference
(C<REF_EQ>), less than or equal (C<LE>), greater than or equal (C<GE>),
or between (C<BETWEEN>). Equal reference (C<REF_EQ>) can be used only
with reference fields. The other comparison types can be used only with
String fields. The comparison types you can use apply only to certain
object fields, as detailed below.

The comparison operators EQ and REF_EQ act on the following fields:

=over

=item * name

=item * @sphere

=item * parent

=item * @componentParent

=item * @instanceParent

=item * @status

=item * @scheduledStartTime

=item * @scheduledEndTime

=item * @actualStartTime

=item * @actualEndTime

=back

The comparison operators C<GE>, C<LE>, and C<BETWEEN> act on the
following fields:

=over

=item * @scheduledStartTime

=item * @scheduledEndTime

=item * @actualStartTime

=item * @actualEndTime

=back

Note that fields beginning with the at sign (@) are read-only and set
by the web service. When you name fields, you should choose names
containing only alpha-numeric values, as symbols may be reserved by AWS
Data Pipeline. User-defined fields that you add to a pipeline should
prefix their name with the string "my".


=head2 Values => ArrayRef[Str|Undef]

  The value that the actual field value will be compared with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

