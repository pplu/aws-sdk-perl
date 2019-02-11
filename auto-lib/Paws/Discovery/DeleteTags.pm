
package Paws::Discovery::DeleteTags;
  use Moose;
  has ConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'configurationIds' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::DeleteTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DeleteTags - Arguments for method DeleteTags on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTags on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method DeleteTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTags.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $DeleteTagsResponse = $discovery->DeleteTags(
      ConfigurationIds => [ 'MyConfigurationId', ... ],
      Tags             => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/DeleteTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationIds => ArrayRef[Str|Undef]

A list of configuration items with tags that you want to delete.



=head2 Tags => ArrayRef[L<Paws::Discovery::Tag>]

Tags that you want to delete from one or more configuration items.
Specify the tags that you want to delete in a I<key>-I<value> format.
For example:

C<{"key": "serverType", "value": "webServer"}>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTags in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

