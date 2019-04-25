
package Paws::SDB::DeleteAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::DeletableAttribute]', traits => ['NameInRequest'], request_name => 'Attribute' );
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expected => (is => 'ro', isa => 'Paws::SDB::UpdateCondition');
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::DeleteAttributes - Arguments for method DeleteAttributes on L<Paws::SDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAttributes on the
L<Amazon SimpleDB|Paws::SDB> service. Use the attributes of this class
as arguments to method DeleteAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAttributes.

=head1 SYNOPSIS

    my $sdb = Paws->service('SDB');
    $sdb->DeleteAttributes(
      DomainName => 'MyString',
      ItemName   => 'MyString',
      Attributes => [
        {
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      Expected => {
        Exists => 1,            # OPTIONAL
        Name   => 'MyString',
        Value  => 'MyString',
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sdb/DeleteAttributes>

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::SDB::DeletableAttribute>]

A list of Attributes. Similar to columns on a spreadsheet, attributes
represent categories of data that can be assigned to items.



=head2 B<REQUIRED> DomainName => Str

The name of the domain in which to perform the operation.



=head2 Expected => L<Paws::SDB::UpdateCondition>

The update condition which, if specified, determines whether the
specified attributes will be deleted or not. The update condition must
be satisfied in order for this request to be processed and the
attributes to be deleted.



=head2 B<REQUIRED> ItemName => Str

The name of the item. Similar to rows on a spreadsheet, items represent
individual objects that contain one or more value-attribute pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAttributes in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

