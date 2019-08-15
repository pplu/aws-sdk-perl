
package Paws::DynamoDB::ListTagsOfResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Type::Utils qw/class_type/;
    my $Tag = class_type 'Paws::DynamoDB::Tag';
  
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[$Tag]);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'NextToken' => {
                                           'type' => 'Str'
                                         },
                          'Tags' => {
                                      'class' => 'Paws::DynamoDB::Tag',
                                      'type' => 'ArrayRef[$Tag]'
                                    }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListTagsOfResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If this value is returned, there are additional results to be
displayed. To retrieve them, call ListTagsOfResource again, with
NextToken set to this value.


=head2 Tags => ArrayRef[$Tag]

The tags currently associated with the Amazon DynamoDB resource.


=head2 _request_id => Str


=cut

1;