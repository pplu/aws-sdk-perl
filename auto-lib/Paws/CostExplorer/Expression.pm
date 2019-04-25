package Paws::CostExplorer::Expression;
  use Moose;
  has And => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::Expression]');
  has Dimensions => (is => 'ro', isa => 'Paws::CostExplorer::DimensionValues');
  has Not => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Or => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::Expression]');
  has Tags => (is => 'ro', isa => 'Paws::CostExplorer::TagValues');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::Expression

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::Expression object:

  $service_obj->Method(Att1 => { And => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::Expression object:

  $result = $service_obj->Method(...);
  $result->Att1->And

=head1 DESCRIPTION

Use C<Expression> to filter by cost or by usage. There are two
patterns:

=over

=item *

Simple dimension values - You can set the dimension name and values for
the filters that you plan to use. For example, you can filter for
C<INSTANCE_TYPE==m4.xlarge OR INSTANCE_TYPE==c4.large>. The
C<Expression> for that looks like this:

C<{ "Dimensions": { "Key": "INSTANCE_TYPE", "Values": [ "m4.xlarge",
E<ldquo>c4.largeE<rdquo> ] } }>

The list of dimension values are OR'd together to retrieve cost or
usage data. You can create C<Expression> and C<DimensionValues> objects
using either C<with*> methods or C<set*> methods in multiple lines.

=item *

Compound dimension values with logical operations - You can use
multiple C<Expression> types and the logical operators C<AND/OR/NOT> to
create a list of one or more C<Expression> objects. This allows you to
filter on more advanced options. For example, you can filter on
C<((INSTANCE_TYPE == m4.large OR INSTANCE_TYPE == m3.large) OR
(TAG.Type == Type1)) AND (USAGE_TYPE != DataTransfer)>. The
C<Expression> for that looks like this:

C<{ "And": [ {"Or": [ {"Dimensions": { "Key": "INSTANCE_TYPE",
"Values": [ "m4.x.large", "c4.large" ] }}, {"Tags": { "Key": "TagName",
"Values": ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key":
"USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }>

Because each C<Expression> can have only one operator, the service
returns an error if more than one is specified. The following example
shows an C<Expression> object that creates an error.

C<{ "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
"Values": [ "DataTransfer" ] } }>

=back


=head1 ATTRIBUTES


=head2 And => ArrayRef[L<Paws::CostExplorer::Expression>]

  Return results that match both C<Dimension> objects.


=head2 Dimensions => L<Paws::CostExplorer::DimensionValues>

  The specific C<Dimension> to use for C<Expression>.


=head2 Not => L<Paws::CostExplorer::Expression>

  Return results that don't match a C<Dimension> object.


=head2 Or => ArrayRef[L<Paws::CostExplorer::Expression>]

  Return results that match either C<Dimension> object.


=head2 Tags => L<Paws::CostExplorer::TagValues>

  The specific C<Tag> to use for C<Expression>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

