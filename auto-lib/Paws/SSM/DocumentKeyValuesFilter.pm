package Paws::SSM::DocumentKeyValuesFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DocumentKeyValuesFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DocumentKeyValuesFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DocumentKeyValuesFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

One or more filters. Use a filter to return a more specific list of
documents.

For keys, you can specify one or more tags that have been applied to a
document.

Other valid values include Owner, Name, PlatformTypes, and
DocumentType.

Note that only one Owner can be specified in a request. For example:
C<Key=Owner,Values=Self>.

If you use Name as a key, you can use a name prefix to return a list of
documents. For example, in the AWS CLI, to return a list of all
documents that begin with C<Te>, run the following command:

C<aws ssm list-documents --filters Key=Name,Values=Te>

If you specify more than two keys, only documents that are identified
by all the tags are returned in the results. If you specify more than
two values for a key, documents that are identified by any of the
values are returned in the results.

To specify a custom key and value pair, use the format
C<Key=tag:[tagName],Values=[valueName]>.

For example, if you created a Key called region and are using the AWS
CLI to call the C<list-documents> command:

C<aws ssm list-documents --filters Key=tag:region,Values=east,west
Key=Owner,Values=Self>

=head1 ATTRIBUTES


=head2 Key => Str

  The name of the filter key.


=head2 Values => ArrayRef[Str|Undef]

  The value for the filter key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

