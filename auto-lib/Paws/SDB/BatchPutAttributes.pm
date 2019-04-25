
package Paws::SDB::BatchPutAttributes;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SDB::ReplaceableItem]', traits => ['NameInRequest'], request_name => 'Item' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::BatchPutAttributes - Arguments for method BatchPutAttributes on L<Paws::SDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutAttributes on the
L<Amazon SimpleDB|Paws::SDB> service. Use the attributes of this class
as arguments to method BatchPutAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutAttributes.

=head1 SYNOPSIS

    my $sdb = Paws->service('SDB');
    $sdb->BatchPutAttributes(
      DomainName => 'MyString',
      Items      => [
        {
          Attributes => [
            {
              Name    => 'MyString',
              Value   => 'MyString',
              Replace => 1,            # OPTIONAL
            },
            ...
          ],
          Name => 'MyString',

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sdb/BatchPutAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain in which the attributes are being stored.



=head2 B<REQUIRED> Items => ArrayRef[L<Paws::SDB::ReplaceableItem>]

A list of items on which to perform the operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutAttributes in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

