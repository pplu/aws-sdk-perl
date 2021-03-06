# Generated by default/object.tt
package Paws::CloudTrail::AdvancedFieldSelector;
  use Moose;
  has EndsWith => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Equals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Field => (is => 'ro', isa => 'Str', required => 1);
  has NotEndsWith => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotEquals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotStartsWith => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StartsWith => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::AdvancedFieldSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::AdvancedFieldSelector object:

  $service_obj->Method(Att1 => { EndsWith => $value, ..., StartsWith => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::AdvancedFieldSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->EndsWith

=head1 DESCRIPTION

A single selector statement in an advanced event selector.

=head1 ATTRIBUTES


=head2 EndsWith => ArrayRef[Str|Undef]

An operator that includes events that match the last few characters of
the event record field specified as the value of C<Field>.


=head2 Equals => ArrayRef[Str|Undef]

An operator that includes events that match the exact value of the
event record field specified as the value of C<Field>. This is the only
valid operator that you can use with the C<readOnly>, C<eventCategory>,
and C<resources.type> fields.


=head2 B<REQUIRED> Field => Str

A field in an event record on which to filter events to be logged.
Supported fields include C<readOnly>, C<eventCategory>, C<eventSource>
(for management events), C<eventName>, C<resources.type>, and
C<resources.ARN>.

=over

=item *

B<C<readOnly> > - Optional. Can be set to C<Equals> a value of C<true>
or C<false>. A value of C<false> logs both C<read> and C<write> events.

=item *

B<C<eventSource> > - For filtering management events only. This can be
set only to C<NotEquals> C<kms.amazonaws.com>.

=item *

B<C<eventName> > - Can use any operator. You can use it to lter in or
lter out any data event logged to CloudTrail, such as C<PutBucket>. You
can have multiple values for this eld, separated by commas.

=item *

B<C<eventCategory> > - This is required. It must be set to C<Equals>,
and the value must be C<Management> or C<Data>.

=item *

B<C<resources.type> > - This eld is required. C<resources.type> can
only use the C<Equals> operator, and the value can be one of the
following: C<AWS::S3::Object>, C<AWS::Lambda::Function>,
C<AWS::DynamoDB::Table>, C<AWS::S3Outposts::Object>,
C<AWS::ManagedBlockchain::Node>, or
C<AWS::S3ObjectLambda::AccessPoint>. You can have only one
C<resources.type> eld per selector. To log data events on more than one
resource type, add another selector.

=item *

B<C<resources.ARN> > - You can use any operator with resources.ARN, but
if you use C<Equals> or C<NotEquals>, the value must exactly match the
ARN of a valid resource of the type you've specied in the template as
the value of resources.type. For example, if resources.type equals
C<AWS::S3::Object>, the ARN must be in one of the following formats. To
log all data events for all objects in a specific S3 bucket, use the
C<StartsWith> operator, and include only the bucket ARN as the matching
value.

The trailing slash is intentional; do not exclude it.

=over

=item *

C<arn:partition:s3:::bucket_name/>

=item *

C<arn:partition:s3:::bucket_name/object_or_file_name/>

=back

When resources.type equals C<AWS::Lambda::Function>, and the operator
is set to C<Equals> or C<NotEquals>, the ARN must be in the following
format:

=over

=item *

C<arn:partition:lambda:region:account_ID:function:function_name>

=back

When resources.type equals C<AWS::DynamoDB::Table>, and the operator is
set to C<Equals> or C<NotEquals>, the ARN must be in the following
format:

=over

=item *

C<arn:partition:dynamodb:region:account_ID:table:table_name>

=back

When C<resources.type> equals C<AWS::S3Outposts::Object>, and the
operator is set to C<Equals> or C<NotEquals>, the ARN must be in the
following format:

=over

=item *

C<arn:partition:s3-outposts:region:E<gt>account_ID:object_path>

=back

When C<resources.type> equals C<AWS::ManagedBlockchain::Node>, and the
operator is set to C<Equals> or C<NotEquals>, the ARN must be in the
following format:

=over

=item *

C<arn:partition:managedblockchain:region:account_ID:nodes/node_ID>

=back

When C<resources.type> equals C<AWS::S3ObjectLambda::AccessPoint>, and
the operator is set to C<Equals> or C<NotEquals>, the ARN must be in
the following format:

=over

=item *

C<arn:partition:s3-object-lambda:region:account_ID:accesspoint/access_point_name>

=back

=back



=head2 NotEndsWith => ArrayRef[Str|Undef]

An operator that excludes events that match the last few characters of
the event record field specified as the value of C<Field>.


=head2 NotEquals => ArrayRef[Str|Undef]

An operator that excludes events that match the exact value of the
event record field specified as the value of C<Field>.


=head2 NotStartsWith => ArrayRef[Str|Undef]

An operator that excludes events that match the first few characters of
the event record field specified as the value of C<Field>.


=head2 StartsWith => ArrayRef[Str|Undef]

An operator that includes events that match the first few characters of
the event record field specified as the value of C<Field>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

