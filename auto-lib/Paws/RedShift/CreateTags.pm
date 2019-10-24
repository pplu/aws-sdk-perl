# Generated from callargs_class.tt

package Paws::RedShift::CreateTags;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Tag/;
  has ResourceName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTags');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceName' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'class' => 'Paws::RedShift::Tag',
                           'type' => 'ArrayRef[RedShift_Tag]'
                         }
             },
  'IsRequired' => {
                    'ResourceName' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateTags - Arguments for method CreateTags on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTags on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTags.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    $redshift->CreateTags(
      ResourceName => 'MyString',
      Tags         => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The Amazon Resource Name (ARN) to which you want to add the tag or
tags. For example, C<arn:aws:redshift:us-east-1:123456789:cluster:t1>.



=head2 B<REQUIRED> Tags => ArrayRef[RedShift_Tag]

One or more name/value pairs to add as tags to the specified resource.
Each tag name is passed in with the parameter C<Key> and the
corresponding value is passed in with the parameter C<Value>. The
C<Key> and C<Value> parameters are separated by a comma (,). Separate
multiple tags with a space. For example, C<--tags
"Key"="owner","Value"="admin" "Key"="environment","Value"="test"
"Key"="version","Value"="1.0">.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTags in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

